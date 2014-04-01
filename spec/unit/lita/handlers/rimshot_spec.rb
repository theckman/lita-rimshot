# -*- coding: UTF-8 -*-
require 'spec_helper'

describe Lita::Handlers::Rimshot, lita_handler: true do
  it { routes_command('rimshot').to(:rimshot) }

  describe '::URL' do
    subject { Lita::Handlers::Rimshot::URL }

    it { should be_an_instance_of String }

    it { should eql 'http://instantrimshot.com/classic/?sound=rimshot' }
  end

  describe '.rimshot' do
    context 'when given more than one arg' do
      it 'should raise ArgumentError' do
        expect do
          subject.rimshot(nil, nil)
        end.to raise_error ArgumentError
      end
    end

    context 'when given less than one arg' do
      it 'should raise ArgumentError' do
        expect do
          subject.rimshot
        end.to raise_error ArgumentError
      end
    end

    context 'when given a response object' do
      it 'should return an instant rimshot!' do
        send_command('rimshot')
        expect(replies.last)
          .to eql 'Here ya go! http://instantrimshot.com/classic/?sound=' \
                  'rimshot'
      end
    end
  end
end
