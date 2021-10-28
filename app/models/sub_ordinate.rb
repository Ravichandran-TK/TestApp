class SubOrdinate < ApplicationRecord
	belongs_to :employee
	# belongs_to :manger_one, class_name: "Employee", foreign_key: 'manager_id'
end
