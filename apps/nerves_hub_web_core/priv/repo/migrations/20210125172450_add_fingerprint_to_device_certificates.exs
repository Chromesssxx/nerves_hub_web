defmodule NervesHubWebCore.Repo.Migrations.AddFingerprintToDeviceCertificates do
  use Ecto.Migration

  def change do
    alter table(:device_certificates) do
      add :fingerprint, :string
    end

    create unique_index :device_certificates, :fingerprint
  end
end
