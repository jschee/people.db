module BirthdaysHelper
  def contacts_birthdays
    @current_year = Date.today.year
    @current_month = Date.today.month
    Contact.all.select{|c| c.birthday.strftime('%m').to_i == @current_month}.sort_by(&:birthday)
  end
end
