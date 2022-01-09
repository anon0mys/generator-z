module Generators::Words
  ALLOWED_TYPES = %w[noun adverb adjective verb]
  ALLOWED_CONJUGATIONS = %w[base past past_participle simple_present ing_form plural]
  ADVERBS =%w[
    boldly bravely brightly cheerfully deftly devotedly eagerly elegantly 
    faithfully fortunately gleefully gracefully happily honestly innocently
    kindly merrily obediently perfectly politely powerfully safely victoriously
    warmly vivaciously achingly angrily annoyingly anxiously badly boastfully 
    dejectedly enviously foolishly hopelessly irritably jealously joylessly lazily 
    miserably morosely obnoxiously painfully poorly rudely sadly selfishly terribly 
    unhappily wearily briskly casually expeditiously fleetingly gradually haltingly 
    hastily hurriedly immediately instantly languidly lazily leisurely promptly 
    quickly rapidly slowly speedily swiftly tediously
  ]

  def word
    type = @type || ALLOWED_TYPES.sample
    conjugation = @conjugation || 'base'
    self.send(type, conjugation)
  end

  def noun(conjugation)
    klass, methods = Generators::Things::THINGS.to_a.sample
    result = klass.send(methods.sample)
    result.pluralize if conjugation == 'plural'
    result
  end

  def adverb(_)
    ADVERBS.sample
  end

  def adjective(_)
    methods = [:positive, :negative]
    Faker::Adjective.send(methods.sample)
  end

  def verb(conjugation)
    Faker::Verb.send(conjugation)
  end
end