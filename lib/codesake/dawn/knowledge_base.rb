require "codesake/dawn/kb/basic_check"
require "codesake/dawn/kb/pattern_match_check"
require "codesake/dawn/kb/dependency_check"
require "codesake/dawn/kb/cve_2013_1855"
require "codesake/dawn/kb/cve_2013_1800"

module Codesake
  module Dawn
    # XXX: Check if it best using a singleton here
    class KnowledgeBase

      def initialize
        @security_checks = [
          Codesake::Dawn::Kb::CVE_2013_1855.new, 
          Codesake::Dawn::Kb::CVE_2013_1800.new
        ]
      end

      def self.find(checks, name)
        return nil if name.nil? or name.empty?

        checks.each do |sc|
          return sc if sc.name == name
        end
        nil

      end

      def find(name)
        Codesake::Dawn::KnowledgeBase.find(@security_checks, name)
      end

      def all
        @security_checks
      end

      def all_by_mvc(mvc)
        ret = []
        @security_checks.each do |sc|
          ret << sc if sc.applies_to?(mvc)
        end

      end

      def all_sinatra_checks
        self.all_by_mvc(:sinatra)
      end

      def all_rails_checks
        self.all_by_mvc(:rails)
      end

      def all_padrino_checks
        self.all_by_mvc(:padrino)
      end

      def all_rack_checks
        self.all_by_mvc(:rack)
      end
    end

  end
end
