require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # El test primero obtiene el root_path y valida que se muestre el template del home
  # luego revisa la cantidad de etiquetas "<a>", mediante el método assert_select, que
  # existe en el template y sus rutas respectivas.
  test "layout link" do
  	get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path

    # Validamos que al obtener el template de contact, el titulo sea el correcto
    # practicamente estamos validando nuestro helper full_title
    get contact_path
    assert_select "title", full_title("Contact")

    get signup_path
    assert_select "title", full_title("Sign up")
  end
end
