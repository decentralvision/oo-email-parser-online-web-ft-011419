# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list
  def initialize(emails)
    @email_list = emails
  end
  def parse
    split_emails = @email_list.split(/(\s|,\s)/)
    remove_delimiters = split_emails.select.with_index{|arr_item, i| i % 1 == 0}.uniq
  end
end
