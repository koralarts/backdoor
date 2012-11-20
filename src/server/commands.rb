#!/usr/bin/env ruby

require 'base64'

module Commands
    def decode(hash)
        return Base64::decode64(hash)
    end
    
    def encode(hash)
        return Base64::encode64(hash)
    end
    
    def run_command(cmd)
        begin
            return `#{cmd}`
        rescue Exception => e
            return e.to_s
        end # rescue
    end
    
    def get_command(filename)
        if !File.exist?(filename) then
            return "File: " + filename + " does not exist."
        end
        return File.readfile(filename, "rb")
    end
end
