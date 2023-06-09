# !/usr/bin/env ruby

require 'cocoapods-project-hmap/pod_target'
require 'cocoapods-project-hmap/post_install_hook_context'

module ProjectHeaderMap
  Pod::HooksManager.register('cocoapods-project-hmap', :post_install) do |post_context|

    p "hmap from git=> https://github.com/chengzongxin/cocoapods-project-hmap-main"
    # p "2023-03-24 19:23:14 不清空Header—Search-Path"

    generate_type = $strict_mode ? HmapGenerator::ANGLE_BRACKET : HmapGenerator::BOTH
    post_context.aggregate_targets.each do |one|
      pods_hmap = HmapGenerator.new
      Pod::UI.message "- hanlding headers of aggregate target :#{one.name}"
      one.pod_targets.each do |target|
        target.generate_hmap(pods_hmap, generate_type, true, false)
        target_hmap = HmapGenerator.new
        target.generate_hmap(target_hmap, HmapGenerator::BOTH, false, true)
        target.save_hmap(target_hmap)
        one.concat_prebuilt_hmap_targets(target.prebuilt_hmap_target_names)
      end
      one.save_hmap(pods_hmap)
    end
  end
end
