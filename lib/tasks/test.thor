class HandsomeFencer

  class Test < Thor
    include Thor::Actions

    desc "install", "Generates Guardfile and over-writes test_helper.rb"
    def install
      create_file "test/test_helper.rb"
      directory "test/test_helper.rb", "test/test_helper.rb"
      directory "Guardfile", "Guardfile"
    end
  end
end
