namespace :import do
    desc "Import national days from CSV"
    task national_days: :environment do
      require "csv"

      file_path = Rails.root.join('db/national_days.csv') # CSVのパス
      puts "Importing national days from #{file_path}..."
      CSV.foreach(file_path, headers: true) do |row|
        NationalDay.create!(
          country_name: row["country_name"],
          national_day: Date.strptime(row["national_day"], "%m-%d"),
          description: row["description"],
          remark: row["remark"],
          image_url: row["image_url"]
        )
      end
      puts "National days imported successfully!"
    end
end
