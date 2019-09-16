require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'caesar-cipher.rb'

get '/' do
    if params['to_cipher'] && params['shift']
        @ciphered = caesar_cipher(params['to_cipher'],params['shift'].to_i)
    end
    erb :index
end