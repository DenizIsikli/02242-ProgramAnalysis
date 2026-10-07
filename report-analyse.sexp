(analysis-summary
  :config (analysis-config
    :cmd (.venv/bin/dynamic-analysis)
    :analysis (analysis-info
      :name dynamic
      :version 1.0
      :group DenizIsikli
      :tags (dynamic python)
      :system Linux-5.15.167.4-microsoft-standard-WSL2-x86_64-with-glibc2.41
    )
    :experiments (
      :"jpamb.cases.Arrays.arrayContent:()V" ()
      :"jpamb.cases.Arrays.arrayContentAboveMinus13:()V" ()
      :"jpamb.cases.Arrays.arrayInBounds:()V" ()
      :"jpamb.cases.Arrays.arrayIsNull:()V" ()
      :"jpamb.cases.Arrays.arrayIsNullLength:()V" ()
      :"jpamb.cases.Arrays.arrayLength:()V" ()
      :"jpamb.cases.Arrays.arrayNotEmpty:([I)V" ()
      :"jpamb.cases.Arrays.arrayOutOfBounds:()V" ()
      :"jpamb.cases.Arrays.arraySometimesNull:(I)V" ()
      :"jpamb.cases.Arrays.arraySpellsHello:([C)V" ()
      :"jpamb.cases.Arrays.arraySumIsLarge:([I)V" ()
      :"jpamb.cases.Arrays.binarySearch:(I)V" ()
      :"jpamb.cases.Calls.allPrimesArePositive:(I)V" ()
      :"jpamb.cases.Calls.callsAssertFalse:()V" ()
      :"jpamb.cases.Calls.callsAssertFib:(I)V" ()
      :"jpamb.cases.Calls.callsAssertIf:(Z)V" ()
      :"jpamb.cases.Calls.callsAssertIfWithTrue:()V" ()
      :"jpamb.cases.Calls.callsAssertTrue:()V" ()
      :"jpamb.cases.Dependent.badNormalizedDistance:(II)I" ()
      :"jpamb.cases.Dependent.divisionLoop:(I)V" ()
      :"jpamb.cases.Dependent.normalizedDistance:(II)I" ()
      :"jpamb.cases.Dependent.safeDivByN:(I)I" ()
      :"jpamb.cases.Loops.forever:()V" ()
      :"jpamb.cases.Loops.neverAsserts:()V" ()
      :"jpamb.cases.Loops.neverDivides:()I" ()
      :"jpamb.cases.Loops.terminates:()V" ()
      :"jpamb.cases.Simple.assertBoolean:(Z)V" ()
      :"jpamb.cases.Simple.assertFalse:()V" ()
      :"jpamb.cases.Simple.assertInteger:(I)V" ()
      :"jpamb.cases.Simple.assertPositive:(I)V" ()
      :"jpamb.cases.Simple.assertTrue:()V" ()
      :"jpamb.cases.Simple.checkBeforeAssert:(I)V" ()
      :"jpamb.cases.Simple.checkBeforeDivideByN2:(I)I" ()
      :"jpamb.cases.Simple.checkBeforeDivideByN:(I)I" ()
      :"jpamb.cases.Simple.divideByN:(I)I" ()
      :"jpamb.cases.Simple.divideByNMinus10054203:(I)I" ()
      :"jpamb.cases.Simple.divideByZero:()I" ()
      :"jpamb.cases.Simple.divideZeroByZero:(II)I" ()
      :"jpamb.cases.Simple.doNothing:()V" ()
      :"jpamb.cases.Simple.earlyReturn:()I" ()
      :"jpamb.cases.Simple.justAdd:(II)I" ()
      :"jpamb.cases.Simple.justMulitply:(II)I" ()
      :"jpamb.cases.Simple.justReturn:()I" ()
      :"jpamb.cases.Simple.justReturnNothing:()V" ()
      :"jpamb.cases.Simple.multiError:(Z)I" ()
      :"jpamb.cases.Strings.sayHello:(Ljava/lang/String;)V" ()
      :"jpamb.cases.Tricky.collatz:(I)V" ()
    )
    :iterations 3
    :timeout 5.0
  )
  :results (
    :"jpamb.cases.Arrays.arrayContent:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94070296
          :relative 1.274048472141472
        )
        :calibrates (5304899 4705100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 111362401
          :relative 1.3161016374930627
        )
        :calibrates (4853900 5902500)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 98374696
          :relative 1.3350247524408432
        )
        :calibrates (4456900 4639900)
      ))
    :"jpamb.cases.Arrays.arrayContentAboveMinus13:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 98237695
          :relative 1.325624487469647
        )
        :calibrates (4505400 4777500)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 128784901
          :relative 1.3306148766350312
        )
        :calibrates (5772200 6258200)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 102764294
          :relative 1.3505123751117538
        )
        :calibrates (4645900 4523900)
      ))
    :"jpamb.cases.Arrays.arrayInBounds:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97155096
          :relative 1.3107308338770187
        )
        :calibrates (4811900 4689000)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 120724900
          :relative 1.3513456727573343
        )
        :calibrates (6225400 4526400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 105068895
          :relative 1.290018407602295
        )
        :calibrates (4548300 6228399)
      ))
    :"jpamb.cases.Arrays.arrayIsNull:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94352096
          :relative 1.3162012491259092
        )
        :calibrates (4625499 4485800)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 95372301
          :relative 1.3002715651901562
        )
        :calibrates (4441400 5112500)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 99361995
          :relative 1.2929367713887643
        )
        :calibrates (5231600 4891500)
      ))
    :"jpamb.cases.Arrays.arrayIsNullLength:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94655396
          :relative 1.3146829646023315
        )
        :calibrates (4710600 4461999)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 162661101
          :relative 1.373499628395554
        )
        :calibrates (5447900 8318300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 104464894
          :relative 1.3140052405338443
        )
        :calibrates (4886300 5252700)
      ))
    :"jpamb.cases.Arrays.arrayLength:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 96603696
          :relative 1.3357367912129168
        )
        :calibrates (4458300 4460100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 120017301
          :relative 1.2448676649562307
        )
        :calibrates (8088000 5570600)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 101675695
          :relative 1.3200004665981355
        )
        :calibrates (5232500 4500499)
      ))
    :"jpamb.cases.Arrays.arrayNotEmpty:([I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97331695
          :relative 1.3301999398044744
        )
        :calibrates (4462600 4638300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 107952700
          :relative 1.352458483485655
        )
        :calibrates (4657800 4931900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 101032095
          :relative 1.3505766185617547
        )
        :calibrates (4458400 4555500)
      ))
    :"jpamb.cases.Arrays.arrayOutOfBounds:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 95286696
          :relative 1.3099712039733562
        )
        :calibrates (4567800 4766700)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 93289501
          :relative 1.2818982406038346
        )
        :calibrates (5289700 4459400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 97290596
          :relative 1.3118621975446525
        )
        :calibrates (4586799 4902599)
      ))
    :"jpamb.cases.Arrays.arraySometimesNull:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 102524096
          :relative 1.3184682604729476
        )
        :calibrates (4690599 5158300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 101451500
          :relative 1.318319443929953
        )
        :calibrates (4737300 5011901)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" found
            :ok not-found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 114171494
          :relative 1.3515785742311561
        )
        :calibrates (4737600 5425100)
      ))
    :"jpamb.cases.Arrays.arraySpellsHello:([C)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 98228296
          :relative 1.2758367781171118
        )
        :calibrates (4937899 5471600)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 108095400
          :relative 1.319334947504398
        )
        :calibrates (4953700 5409700)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 142484092
          :relative 1.4249420282187004
        )
        :calibrates (5841500 4870100)
      ))
    :"jpamb.cases.Arrays.arraySumIsLarge:([I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 119681094
          :relative 1.4154518608535787
        )
        :calibrates (4742000 4454100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 122237601
          :relative 1.405168103016099
        )
        :calibrates (5099700 4517900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 109446294
          :relative 1.3835776780037985
        )
        :calibrates (4571500 4478600)
      ))
    :"jpamb.cases.Arrays.binarySearch:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 137593294
          :relative 1.4874549920778013
        )
        :calibrates (4470200 4487000)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 141121001
          :relative 1.5005879923958565
        )
        :calibrates (4301100 4612100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 138946193
          :relative 1.4843439692425486
        )
        :calibrates (4448300 4662000)
      ))
    :"jpamb.cases.Calls.allPrimesArePositive:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 1241820345
          :relative 2.449605409566952
        )
        :calibrates (4366900 4453400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 1315668779
          :relative 2.4656977185239484
        )
        :calibrates (4573200 4431699)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" found
          )
        )
        :duration (duration
          :absolute 1296812335
          :relative 2.4567166671765754
        )
        :calibrates (4412299 4649000)
      ))
    :"jpamb.cases.Calls.callsAssertFalse:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97014395
          :relative 1.3278380042894926
        )
        :calibrates (4479100 4641600)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 106655978
          :relative 1.3639971346712587
        )
        :calibrates (4384199 4841899)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 100979195
          :relative 1.3276434522891696
        )
        :calibrates (4667900 4829800)
      ))
    :"jpamb.cases.Calls.callsAssertFib:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2688336403
          :relative 2.759303094511377
        )
        :calibrates (4646600 4711992)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2629517645
          :relative 2.717032222113649
        )
        :calibrates (4666099 5423499)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2635498667
          :relative 2.7574634898619026
        )
        :calibrates (4719999 4493600)
      ))
    :"jpamb.cases.Calls.callsAssertIf:(Z)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 110034005
          :relative 1.3796866549549338
        )
        :calibrates (4646191 4534392)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 106748177
          :relative 1.333702717290634
        )
        :calibrates (4911999 4989199)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 95381395
          :relative 1.3258893947849197
        )
        :calibrates (4461700 4545800)
      ))
    :"jpamb.cases.Calls.callsAssertIfWithTrue:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 102430918
          :relative 1.356404577986423
        )
        :calibrates (4511292 4505592)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 109919677
          :relative 1.3449769992021419
        )
        :calibrates (5017099 4916999)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 95715595
          :relative 1.3407796221076251
        )
        :calibrates (4376900 4357500)
      ))
    :"jpamb.cases.Calls.callsAssertTrue:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 108797207
          :relative 1.3773156946039335
        )
        :calibrates (4406492 4720592)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 99099279
          :relative 1.3066462831723666
        )
        :calibrates (4815899 4966699)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 102334795
          :relative 1.3579511708880376
        )
        :calibrates (4496799 4479600)
      ))
    :"jpamb.cases.Dependent.badNormalizedDistance:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 365111153
          :relative 1.9079797826584708
        )
        :calibrates (4522892 4502692)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 338331428
          :relative 1.8429653861949513
        )
        :calibrates (4998799 4715399)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 329986683
          :relative 1.8540048692772708
        )
        :calibrates (4675200 4561600)
      ))
    :"jpamb.cases.Dependent.divisionLoop:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 127978673
          :relative 1.4466001503550285
        )
        :calibrates (4478492 4674592)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 126457274
          :relative 1.4418899365726823
        )
        :calibrates (4635899 4506999)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 129875594
          :relative 1.434595146627152
        )
        :calibrates (4798399 4750700)
      ))
    :"jpamb.cases.Dependent.normalizedDistance:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 402147088
          :relative 1.9359624801865527
        )
        :calibrates (4615692 4705092)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 401342915
          :relative 1.9371943139490944
        )
        :calibrates (4473499 4802299)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 394144180
          :relative 1.9145134631783676
        )
        :calibrates (4490299 5107500)
      ))
    :"jpamb.cases.Dependent.safeDivByN:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 107447210
          :relative 1.3600971275930982
        )
        :calibrates (4585092 4793292)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97375679
          :relative 1.3303771601647945
        )
        :calibrates (4575599 4525699)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 135847293
          :relative 1.4098909674424576
        )
        :calibrates (5460300 5112500)
      ))
    :"jpamb.cases.Loops.forever:()V" ((analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2608099511
          :relative 2.7685846549665194
        )
        :calibrates (4420392 4466901)
      ) (analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2632130845
          :relative 2.7413796678347935
        )
        :calibrates (4527099 5021899)
      ) (analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2602193498
          :relative 2.7050445195899506
        )
        :calibrates (5734199 4530000)
      ))
    :"jpamb.cases.Loops.neverAsserts:()V" ((analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2613938183
          :relative 2.7532224288489617
        )
        :calibrates (4685600 4542300)
      ) (analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2692211774
          :relative 2.7249985233009446
        )
        :calibrates (4879199 5263200)
      ) (analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2631589114
          :relative 2.75628170203139
        )
        :calibrates (4514500 4710500)
      ))
    :"jpamb.cases.Loops.neverDivides:()I" ((analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2646524915
          :relative 2.747333074146751
        )
        :calibrates (4586600 4883900)
      ) (analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2628099410
          :relative 2.7065504844038344
        )
        :calibrates (5170999 5159500)
      ) (analysis-result
        :response (response
          :predictions (
            :* found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 2650948514
          :relative 2.753554654674484
        )
        :calibrates (4579600 4771800)
      ))
    :"jpamb.cases.Loops.terminates:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 109917000
          :relative 1.3701004240478847
        )
        :calibrates (4684400 4691100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 131516995
          :relative 1.3992156847792523
        )
        :calibrates (5201100 5289400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94393404
          :relative 1.3228694464276258
        )
        :calibrates (4538500 4437900)
      ))
    :"jpamb.cases.Simple.assertBoolean:(Z)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 101407301
          :relative 1.3157446471996952
        )
        :calibrates (4504900 5298000)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 111131596
          :relative 1.3019360009634118
        )
        :calibrates (5217900 5872100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 96113804
          :relative 1.3127672811849775
        )
        :calibrates (4422801 4932300)
      ))
    :"jpamb.cases.Simple.assertFalse:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 99688400
          :relative 1.2391165329451161
        )
        :calibrates (5243600 6252700)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 133053296
          :relative 1.3796348903109021
        )
        :calibrates (6426099 4676400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 95438804
          :relative 1.2965833526411759
        )
        :calibrates (4802700 4839400)
      ))
    :"jpamb.cases.Simple.assertInteger:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 106261800
          :relative 1.3359285175399207
        )
        :calibrates (5071401 4734300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 115263696
          :relative 1.39495003060168
        )
        :calibrates (4580800 4703999)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 105452404
          :relative 1.360893808147595
        )
        :calibrates (4771601 4415800)
      ))
    :"jpamb.cases.Simple.assertPositive:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 114857601
          :relative 1.3760103463091153
        )
        :calibrates (4684200 4980300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 108115597
          :relative 1.3598865947551972
        )
        :calibrates (4696600 4744699)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 107625504
          :relative 1.3068247256715135
        )
        :calibrates (4525201 6094700)
      ))
    :"jpamb.cases.Simple.assertTrue:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97313700
          :relative 1.3093279605049533
        )
        :calibrates (4977600 4569600)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 96874797
          :relative 1.3161320208520124
        )
        :calibrates (4772100 4584300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 104665704
          :relative 1.2943051747912657
        )
        :calibrates (5442001 5187900)
      ))
    :"jpamb.cases.Simple.checkBeforeAssert:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 99879701
          :relative 1.3055041955727003
        )
        :calibrates (5236000 4649600)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 102739896
          :relative 1.3585314335131489
        )
        :calibrates (4373300 4626600)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 104695604
          :relative 1.327270922905289
        )
        :calibrates (5099801 4755900)
      ))
    :"jpamb.cases.Simple.checkBeforeDivideByN2:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 101565301
          :relative 1.3433789983927698
        )
        :calibrates (4594000 4618900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 121936596
          :relative 1.3831481354156596
        )
        :calibrates (4781300 5311599)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94028004
          :relative 1.3195045358044062
        )
        :calibrates (4473701 4537500)
      ))
    :"jpamb.cases.Simple.checkBeforeDivideByN:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97660600
          :relative 1.330216772467888
        )
        :calibrates (4632900 4498400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 114140596
          :relative 1.3319123544474045
        )
        :calibrates (5317600 5313000)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 96650004
          :relative 1.2972896210147935
        )
        :calibrates (4550400 5198200)
      ))
    :"jpamb.cases.Simple.divideByN:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 95625601
          :relative 1.3296307380515469
        )
        :calibrates (4341200 4611900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 109316396
          :relative 1.3177160744678624
        )
        :calibrates (5195600 5324000)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 110667104
          :relative 1.349672157625253
        )
        :calibrates (5048501 4845601)
      ))
    :"jpamb.cases.Simple.divideByNMinus10054203:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 96575700
          :relative 1.32796030948619
        )
        :calibrates (4523900 4553000)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 102842596
          :relative 1.3417184324467968
        )
        :calibrates (5046300 4318200)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97499004
          :relative 1.3254452992757961
        )
        :calibrates (4656200 4560700)
      ))
    :"jpamb.cases.Simple.divideByZero:()I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 100769901
          :relative 1.305648245545325
        )
        :calibrates (4884900 5085500)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94318497
          :relative 1.308242765067649
        )
        :calibrates (4437400 4839099)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97435105
          :relative 1.3225860822463433
        )
        :calibrates (4445200 4826500)
      ))
    :"jpamb.cases.Simple.divideZeroByZero:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 173438101
          :relative 1.5482311070577093
        )
        :calibrates (5195300 4620900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 179623694
          :relative 1.5903754616329318
        )
        :calibrates (4850200 4375900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 182909012
          :relative 1.5986566177904105
        )
        :calibrates (4793800 4423601)
      ))
    :"jpamb.cases.Simple.doNothing:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 98146301
          :relative 1.3279705129568473
        )
        :calibrates (4642400 4581900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 91728697
          :relative 1.3162731421618281
        )
        :calibrates (4392700 4463799)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 92634406
          :relative 1.3035002493709333
        )
        :calibrates (4390900 4820000)
      ))
    :"jpamb.cases.Simple.earlyReturn:()I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 91758600
          :relative 1.3078832287861806
        )
        :calibrates (4534300 4497900)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 100145297
          :relative 1.34164666862234
        )
        :calibrates (4526900 4593500)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 97303006
          :relative 1.3210516788919744
        )
        :calibrates (4611501 4680400)
      ))
    :"jpamb.cases.Simple.justAdd:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 159097801
          :relative 1.53245425578826
        )
        :calibrates (4657300 4680400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 173090994
          :relative 1.571419716171044
        )
        :calibrates (4652300 4634899)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 162780510
          :relative 1.546673767325195
        )
        :calibrates (4615501 4630600)
      ))
    :"jpamb.cases.Simple.justMulitply:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 164388501
          :relative 1.561661191169999
        )
        :calibrates (4466300 4554400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 167402995
          :relative 1.55921060728704
        )
        :calibrates (4816000 4422099)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 171670011
          :relative 1.5694652899290207
        )
        :calibrates (4597501 4655000)
      ))
    :"jpamb.cases.Simple.justReturn:()I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 96029501
          :relative 1.3231732392614028
        )
        :calibrates (4509300 4616300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 100461797
          :relative 1.3442998668199202
        )
        :calibrates (4561100 4532400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94656506
          :relative 1.2585714525989624
        )
        :calibrates (4652401 5785400)
      ))
    :"jpamb.cases.Simple.justReturnNothing:()V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 93085900
          :relative 1.3132077363451464
        )
        :calibrates (4446800 4604400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 93003697
          :relative 1.2971329994552543
        )
        :calibrates (4713099 4671100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" not-found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 103533407
          :relative 1.3033196600843424
        )
        :calibrates (5770300 4528600)
      ))
    :"jpamb.cases.Simple.multiError:(Z)I" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94777401
          :relative 1.2793185069318367
        )
        :calibrates (4617400 5346200)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94106297
          :relative 1.3187445580855324
        )
        :calibrates (4540300 4494200)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" found
            :"null pointer" not-found
            :ok not-found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 92523306
          :relative 1.3097313138181328
        )
        :calibrates (4555600 4513200)
      ))
    :"jpamb.cases.Strings.sayHello:(Ljava/lang/String;)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 105615300
          :relative 1.3157523591800693
        )
        :calibrates (5676100 4533400)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 95165797
          :relative 1.3397421093180877
        )
        :calibrates (4334000 4371000)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 94802307
          :relative 1.3172829988038803
        )
        :calibrates (4495500 4636500)
      ))
    :"jpamb.cases.Tricky.collatz:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 139613001
          :relative 1.4745872212833127
        )
        :calibrates (4510900 4851100)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 127244395
          :relative 1.4491112650310447
        )
        :calibrates (4571800 4476300)
      ) (analysis-result
        :response (response
          :predictions (
            :* not-found
            :"assertion error" found
            :"divide by zero" not-found
            :"null pointer" not-found
            :ok found
            :"out of bounds" not-found
          )
        )
        :duration (duration
          :absolute 123308508
          :relative 1.407432678376548
        )
        :calibrates (4469700 5181701)
      ))
  )
)