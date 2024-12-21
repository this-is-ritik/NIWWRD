$RepositoryBaseURL = 'git@github.com:this-is-ritik'
$DevelopmentTarget = '15.0'

platform :ios, $DevelopmentTarget

install! 'cocoapods', :deterministic_uuids => false

use_frameworks! :linkage => :static
workspace 'NIWWRD.xcworkspace'

$useLocalPods=true

target 'NIWWRD' do
  use_frameworks! :linkage => :static
  if $useLocalPods
    pod 'NIWWRDCommon', :path => '../NIWWRDCommon'
  else
    pod 'NIWWRDCommon',  :git => $RepositoryBaseURL + '/NIWWRDCommon', :branch => 'integration'
  end
  
  target 'NIWWRDTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'NIWWRDUITests' do
    # Pods for testing
  end

end
