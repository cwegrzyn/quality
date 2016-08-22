module Test
  module Quality
    module Tools
      # Test for the 'bundler_audit' tool within the quality gem
      module BundlerAudit
        def expect_bundler_audit_run(quality_checker)
          @mocks[:quality_checker_class]
            .expects(:new).with('bundle-audit',
                                { args: '' },
                                'metrics',
                                false)
            .returns(quality_checker)
        end
      end
    end
  end
end
