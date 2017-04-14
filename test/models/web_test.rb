require 'test_helper'

class WebTest < ActiveSupport::TestCase
  setup do
    @web = Web.create!(name: 'Wikipedia', url: 'http://www.wikipedia.com', description: 'a' * 10)
    # @web = webs(:google)
  end
  test 'aumenta en 1 cuando se crea una nueva web' do
    assert_equal 3, Web.count

    Web.create!(name: 'yahoo', url: 'http://yahoo.com', description: 'a' * 10)

    assert_equal 4, Web.count
  end

  test 'nombre correcto de una web' do
    google = Web.find_by(name: 'Google')

    assert_equal 'http://www.google.com', google.url
  end

  test 'nombre correcto' do
    # byebug
    assert_equal 'RubyonRails', webs(:rubyonrails).name
  end

  test 'nombre no debe ser vacio' do
    @web.name = ''

    assert_not @web.valid?
  end

  test 'nombre debe tener maximo 15 caracteres' do
    @web.name = 'a' * 14
    assert @web.valid?

    @web.name = 'a' * 16
    assert_not @web.valid?
  end

  test 'url no debe ser vacio' do
    @web.url = ' '
    assert_not @web.valid?
  end

  test 'descripcion debe ser minimo 10 caracteres' do
    @web.description = 'a' * 9
    assert_not @web.valid?

    @web.description = 'a' * 50
    assert @web.valid?
  end
end
