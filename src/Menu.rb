class Menu
	
	## setter and getter options
	attr_accessor :link , :title

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
	# make array of items
	#
	# @author Alireza Josheghani <a.josheghani@anetwork.ir>
	# @since 24 Nov 2016
	# @return [Object]
	def make
		{
				:title => @title,
				:link => @link
		}
	end
	
end