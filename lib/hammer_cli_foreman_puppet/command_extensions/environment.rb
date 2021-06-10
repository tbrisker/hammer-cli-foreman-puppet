module HammerCLIForemanPuppet
  module CommandExtensions
    class PuppetEnvironment < HammerCLI::CommandExtensions
      option_sources do |sources, command|
        sources.find_by_name('IdResolution').insert_relative(
          :after,
          'IdParams',
          HammerCLIForemanPuppet::OptionSources::PuppetEnvironmentParams.new(command)
        )
        sources
      end
    end
  end
end
