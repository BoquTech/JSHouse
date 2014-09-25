class RemoveReferrenceFromAddresses < ActiveRecord::Migration
  def change
    remove_reference :addresses, :address, index: true
  end
end
