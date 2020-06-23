require 'restclient'
require 'rest-client'
require 'rspec'
require 'regex'
require 'json'
require 'jsonpath'
require 'json-schema'
require 'rubygems'
require 'yaml'
require 'faraday'
require 'faraday_middleware'

require_relative '../support/countries_helper'


$ENVIRONMENT=YAML.load(File.open(File.expand_path('../../../', __FILE__)+'/config/config.yml'))