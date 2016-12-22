# Unidom Sequence 序列领域模型引擎

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/unidom-sequence.svg)](https://badge.fury.io/rb/unidom-sequence)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/unidom-sequence.svg)](https://gemnasium.com/github.com/topbitdu/unidom-sequence)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Sequence domain model engine includes the Sequence model and its relative models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。序列领域模型引擎包括序列和与其相关的模型。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile

```ruby
gem 'unidom-sequence'
```



## Run the Database Migration

```shell
rake db:migrate
```
The migration versions start with 200008.



## Call the Model

```ruby
serial_number_1 = Unidom::Sequence::Sequence.generate! 'FLNO', '12345620170101' # 1
serial_number_2 = Unidom::Sequence::Sequence.generate! 'FLNO', '12345620170101' # 2
```
