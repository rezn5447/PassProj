helpers do
		def current_commander
			@current_commander ||= session[:commander_id] && Commander.find(session[:commander_id])
		end

		def login(commander)
			session[:commander_id] = commander.id
		end

    def logout
      session[:commander_id] = nil
    end
	end
