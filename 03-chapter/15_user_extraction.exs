defmodule UserExtraction do
  def extract_user(user) do
    with {:ok, login} <- extract_login(user),
         {:ok, email} <- extract_email(user),
         {:ok, password} <- extract_password(user)
    do
      {:ok, %{login: login, email: email, password: password}}
    end
  end

  defp extract_login(%{"login" => login}), do: {:ok, login}
  defp extract_login(_), do: {:error, "login missing"}

  defp extract_email(%{"email" => email}), do: {:ok, email}
  defp extract_email(_), do: {:error, "email missing"}

  defp extract_password(%{"password" => password}), do: {:ok, password}
  defp extract_password(_), do: {:error, "password missing"}
end

#UserExtraction.extract_user(%{})
#UserExtraction.extract_user(%{"login" => "some_login"})
#UserExtraction.extract_user(%{"login" => "some_login", "email" => "some@example.com"})
#UserExtraction.extract_user(%{"login" => "some_login", "email" => "some@example.com", "password" => "some_password"})
