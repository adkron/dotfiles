# Mostly from https://github.com/holman/dotfiles
require 'rake'

task :default => [:install]

task :install => [:git_submodules_init, :symlinks, 'vundle:install'] do
  puts 'Install complete!'
end

task :git_submodules_init do
  system "git submodule init"
  system "git submodule update"
end

desc 'Create symlinks to dotfiles in home directory'
task :symlinks do
  links = Dir.glob('**/*{.symlink}')

  skip_all = false
  overwrite_all = false
  backup_all = false

  links.each do |link_source|
    overwrite = false
    backup = false

    file = link_source.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        when 's' then next
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end

    # -T to treat target as normal file (ie never a directory)
    `ln -s "$PWD/#{link_source}" "#{target}"`
  end
end


task :uninstall do

  Dir.glob('**/*.symlink').each do |linkable|

    file = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    # Remove all symlinks created during installation
    if File.symlink?(target)
      FileUtils.rm(target)
    end
    
    # Replace any backups made during installation
    if File.exists?("#{ENV["HOME"]}/.#{file}.backup")
      `mv "$HOME/.#{file}.backup" "$HOME/.#{file}"` 
    end

  end
end

namespace "vundle" do
  task :install do
    puts 'Updating vim bundles with vundle. This may take a few minutes...'
    `vim -u vim.symlink/bundle.vim +BundleInstall +qall`
  end
end
