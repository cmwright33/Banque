class Transaction < ActiveRecord::Base
attr_accessible :typeof, :memo, :accounts_id
end