class Sidenav

	# setter and getter results
	attr_accessor :group , :currentRoute , :menu , :routes

	##
	# Sidenav initialize
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @return [object]
  def initialize
		@menu = Hash.new
		@routes = Array.new
	end

	##
	# Register a group items
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @param [string] name
  # @param [lambda] callback
  def group(name,callback)
		# set group menu name
		@group = name

		# set group menu
		@menu[name] = []

		# run callback lambda
		callback.call
	end

	##
	# Register a new item
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @param [string] name
  # @param [lambda] callback
  # @return [Object]
  def register(name,callback)

		@current_route = name

		@routes.push(name)

		item = self.add(name,callback)

		if self.check_group_name(@group)
			@menu[@group].push(item)
		else
			@menu.push(item)
		end
	end

	##
	# Add item
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @param [string] item
  # @param [lambda] callback
  # @return [Object]
  def add(item,callback)
		menu_object = Menu.new

		callback.call(menu_object)

		menu_object.make(item)
	end

	##
	# Check group name was set
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @param [string] group
  # @return [bool]
  def check_group_name(group)
		if group != nil
			true
    else
      false;
		end
	end

  ##
  # get registered routes
  #
  # @author Alireza Josheghani <a.josheghani@anetwork.ir>
  # @since 24 Nov 2016
  # @return [Object]
  def routes
		puts @routes
	end

	##
	# get render of menu array
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
  # @param [Object] group
  def render(group = nil)
		if group != nil
			puts @menu[group]
		else
			puts @menu
		end
	end

end
