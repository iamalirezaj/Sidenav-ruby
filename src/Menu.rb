class Menu
	
	## setter and getter options
	attr_accessor :name , :link , :title , :icon

	##
	# set link option of item
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @param [string] link
  # @return [string]
  def link(link)
		@link = link
	end

	##
	# set title option of item
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @param [string] title
  # @return [Object]
  def title(title)
		@title = title
  end

  ##
  # set icon option of item
  #
  # @author Alireza Josheghani <a.josheghani@anetwork.ir>
  # @since 24 Nov 2016
  # @param [string] icon
  # @return [Object]
  def icon(icon)
    @icon = icon
  end

  ##
  # set route name
  #
  # @author Alireza Josheghani <a.josheghani@anetwork.ir>
  # @since 24 Nov 2016
  # @param [string] name
  # @return [Object]
  def set_item_name(name)
    @route = name
  end

	##
	# make array of items
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
	# @return [Object]
	def make(item)

    # set route name
    self.set_item_name(item)

    # return render object
		{
        route: @route,
        title: @title,
        link: @link ,
        icon: @icon
    }

	end
	
end