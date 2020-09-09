require 'json'
class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit, :update, :show, :destroy]
  before_action :set_tags, only: [:create, :update]
  def new
    @contact = Contact.new
    @tags = Tag.all.map{|x| x.name}.uniq
  end

  def create
    @contact = Contact.new(contacts_params.except(:tags))
    if @contact.save
      redirect_to root_path
      @tags.each do |tag|
        Tag.find_or_create_by(contact_id: @contact.id, name: tag)
      end
    end
  end

  def edit
    @contact = Contact.find_by(slug: params[:slug])
  end

  def show
    @note = Note.new
    @notes = Note.find_by(slug: params[:slug])
  end

  def update
    if @contact.update(contacts_params.except(:tags))
      old_tags = @contact.tags
      old_tags.each do |tag|
        next if @tags.include?(tag.name)
        tag.destroy
      end
      @tags.each do |tag|
        Tag.find_or_create_by(contact_id: @contact.id, name: tag)
      end
      redirect_to "/contacts/#{@contact.slug}"
    end

  end

  def destroy
    if @contact.destroy
      @contact.avatar.purge
      redirect_to root_path
    end
  end

  def create_note
    @note = Note.create(notes_params)
    respond_to do |format|
      format.js
      format.html do
        redirect_to request.referrer
      end
    end
  end

  def delete_note
    @note = Note.find_by(slug: params[:slug])
    @note.destroy
    respond_to do |format|
      format.js
      format.html do
        redirect_to request.referrer
      end
    end
  end

  private

  def set_tags
    @tags = JSON.parse(contacts_params[:tags]).map{|x| x["value"]}
  end

  def set_contact
    @contact = Contact.find_by(slug: params[:slug]) || Contact.find_by_id!(params[:slug])
  end

  def contacts_params
    params.require(:contact).permit(:slug, :avatar, :first_name, :last_name, :email, :phone_number, :city, :country, :address_1, :address_2, :relationship, :birthday, :personal_website, :occupation, :company_website, :tags, :industry, :state)
  end

  def notes_params
    params.require(:note).permit(:contact_id, :description, :slug)
  end

end

