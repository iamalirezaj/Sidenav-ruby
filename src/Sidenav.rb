class Sidenav

	# setter and getter results
	attr_accessor :group , :currentRoute , :menu , :routes

	##
	# Sidenav initialize
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
	def initialize
		@menu = Hash.new()
		@routes = Array.new()
	end

	##
	# Register a group items
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
	def group(name,callback)
		# set group menu name
		@group = name

		# set group menu
		@menu[name] = []

		# run callback lambda
		callback.call()
	end

	##
	# Register a new item
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
	def register(name,callback)

		@currentRoute = name

		@routes.push(name)

		item = add(name,callback)

		if(checkGroupName(@group))
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
	def add(item,callback)
		menuObject = Menu.new

		callback.call(menuObject)

		return menuObject.make(item)
	end

	##
	# Check group name was set
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
	def checkGroupName(group)
		if(group != nil)
            return true;
        else
        	return false;
        end
	end

	def routes
		puts @routes
	end

	##
	# get render of menu array
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
	def render(group = nil)
		if(group != nil)
			puts @menu[group]
		else
			puts @menu
		end
	end

end
