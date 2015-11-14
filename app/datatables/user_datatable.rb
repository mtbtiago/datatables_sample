class UserDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  # include AjaxDatatablesRails::Extensions::Kaminari
  include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator

  def sortable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.name'
    @sortable_columns ||= ['users.name', 'users.phone', 'users.address', 'users.dob', 'users.card']
  end

  def searchable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.name'
    @searchable_columns ||= ['users.name', 'users.phone', 'users.address', 'users.dob', 'users.card']
  end

  private

  def data
    records.map do |record|
      first = true
      [
        record.name,
        record.phone,
        record.address,
        record.dob.to_formatted_s(:long),
        format('%04d', record.card).chars.map do |c|
          if c == '0' && first
            '*'
          else
            first = false
            c
          end
        end.join
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
      ]
    end
  end

  def get_raw_records
    User.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
