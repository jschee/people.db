class PagesController < ApplicationController
  def home
    @pagy, @contacts = pagy(Contact.all)
  end

  def tags
    @tags = Tag.all.map{|x| x.name}.uniq
  end

  def tags_search
    @tag = Tag.find_by(name: params[:tag])
    @contacts = Tag.where(name: @tag.name).map{|x| x.contact}
  end

end

