require './src/Menu.rb'
require './src/Sidenav.rb'

sidenav = Sidenav.new

sidenav.group('user',lambda {

	sidenav.register('home',lambda { |menu| 
		menu.title('The home page')
		menu.link('/home.php')
	})

})

sidenav.group('admin',lambda {

	sidenav.register('admin',lambda { |menu| 
		menu.title('The admin page')
		menu.link('/admin.php')
	})

})

sidenav.render


