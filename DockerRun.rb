#!/bin/ruby

require 'fileutils'

class DockerRun

    # Run the script
    def run(args)
        # Validates Username
        if args[0] == nil
            throw "Please input a container name!"
        end

        ct_name=args[0]
        local_wrk_dir="#{get_wrk_dir}/#{ct_name}"

        # If the working directory does not exist
        if ! File.directory?(local_wrk_dir)
            puts "Creating directory #{local_wrk_dir}..."
            FileUtils.mkdir_p local_wrk_dir
            #FileUtils.chown 'root', 'staff', '/usr/local/bin/ruby'#chown joaovperin $local_wrk_dir
        end

        cmd_exec=ct_name

        # If interactive, then open sh
        if args[1] == "-it"
            cmd_exec="-it #{ct_name} sh"
            #shift
        end

        # Concat all the additional params as command prefix
        cmd_pref=""
        if args.length >=2
            cmd_pref=" #{args[2...args.length].join(" ")} "
        end

        puts "Starting #{ct_name} container... "

        cmd_execute = "docker run -p 3000:300 -v #{local_wrk_dir}:/workdir #{cmd_pref} #{cmd_exec}"
        puts "-> #{cmd_execute}"
        system cmd_execute

        puts "End."
    end

    def get_base_dir
        if is_linux
            return "#{ENV['HOME']}/DockerPlayground"
        end
        return "T:/DockerPlayground"
    end

    def get_wrk_dir
        return "#{get_base_dir}/DockerPlayground"
    end

    def is_linux
        return ( /linux/ =~ RUBY_PLATFORM) != nil
    end

end

DockerRun.new.run(ARGV)