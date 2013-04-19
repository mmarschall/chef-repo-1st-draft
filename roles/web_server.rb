name "web_server"

# needs cookbooks "build-essential, yum, apt, ohai" to be 
# knife cookbook site install ...
# knife cookbook upload ...
# and, if there are merge conflicts during site install:
# git branch -D chef-vendor-apt (to delete the old vendor branch)
# apt is there because of: http://stackoverflow.com/questions/12555096/error-with-chef-build-essential-cookbook-on-ubuntu-12-04
run_list "recipe[nginx::source]"

default_attributes "nginx" => { 
  "init_style" => "init",
  "upload_progress" => {
    "url" => "https://github.com/masterzen/nginx-upload-progress-module/tarball/v0.9.0"
  },
  "source" => {
    "modules" => ["upload_progress_module"]
  }
}