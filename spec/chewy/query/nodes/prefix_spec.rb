require 'spec_helper'

describe Chewy::Query::Nodes::Prefix do
  describe '#__render__' do
    def render &block
      Chewy::Query::Context.new(&block).__render__
    end

    specify { render { name =~ 'nam' }.should == {prefix: {'name' => 'nam'}} }
    specify { render { name !~ 'nam' }.should == {not: {prefix: {'name' => 'nam'}}} }
  end
end
