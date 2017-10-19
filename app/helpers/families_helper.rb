module FamiliesHelper
	def resource_item
    :family
  end

  def res
    @family ||= Item.new
  end

  def create

  end
end
