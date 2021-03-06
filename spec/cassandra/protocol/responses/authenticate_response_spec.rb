# encoding: ascii-8bit

# Copyright 2013-2014 DataStax, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#++

require 'spec_helper'


module Cassandra
  module Protocol
    describe AuthenticateResponse do
      describe '.decode' do
        let :response do
          buffer = CqlByteBuffer.new("\x00\x2forg.apache.cassandra.auth.PasswordAuthenticator")
          described_class.decode(1, buffer, buffer.length)
        end

        it 'decodes the authentication class' do
          response.authentication_class.should == 'org.apache.cassandra.auth.PasswordAuthenticator'
        end
      end

      describe '#to_s' do
        it 'returns a string with the authentication class' do
          response = described_class.new('org.apache.cassandra.auth.PasswordAuthenticator')
          response.to_s.should == 'AUTHENTICATE org.apache.cassandra.auth.PasswordAuthenticator'
        end
      end
    end
  end
end
