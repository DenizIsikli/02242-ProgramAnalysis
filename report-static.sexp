(analysis-summary
  :config (analysis-config
    :cmd (.venv/bin/static-analysis)
    :analysis (analysis-info
      :name static
      :version 1.0
      :group DenizIsikli
      :tags (static python)
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
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 96771332
          :relative 1.3150096393107011
        )
        :calibrates (4855996 4514597)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 159402187
          :relative 1.2794708547988587
        )
        :calibrates (12174692 4576797)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 95758765
          :relative 1.3244051145436513
        )
        :calibrates (4378799 4695298)
      ))
    :"jpamb.cases.Arrays.arrayContentAboveMinus13:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 106575625
          :relative 1.380436634847109
        )
        :calibrates (4474297 4402397)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 95776133
          :relative 1.3291902737268229
        )
        :calibrates (4550796 4425497)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 96795265
          :relative 1.3264705591736918
        )
        :calibrates (4662598 4466199)
      ))
    :"jpamb.cases.Arrays.arrayInBounds:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 96157532
          :relative 1.3352584168125596
        )
        :calibrates (4421397 4465597)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 96074132
          :relative 1.3223153414675195
        )
        :calibrates (4561097 4586797)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 93353766
          :relative 1.3149214957148148
        )
        :calibrates (4511599 4529898)
      ))
    :"jpamb.cases.Arrays.arrayIsNull:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95108033
          :relative 1.3309812691252407
        )
        :calibrates (4440697 4436297)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 103053127
          :relative 1.3271496463789503
        )
        :calibrates (4592197 5111596)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97572265
          :relative 1.3073711411347548
        )
        :calibrates (4576798 5038998)
      ))
    :"jpamb.cases.Arrays.arrayIsNullLength:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 101089729
          :relative 1.346877361465593
        )
        :calibrates (4359796 4736397)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 145363221
          :relative 1.3288550958933325
        )
        :calibrates (5096396 8537797)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 102878263
          :relative 1.34427352897452
        )
        :calibrates (4627398 4685398)
      ))
    :"jpamb.cases.Arrays.arrayLength:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 98456831
          :relative 1.342390027311511
        )
        :calibrates (4554797 4396497)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 154990544
          :relative 1.3029835143629556
        )
        :calibrates (8925197 6504297)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 96910765
          :relative 1.3198214236284984
        )
        :calibrates (4696098 4584599)
      ))
    :"jpamb.cases.Arrays.arrayNotEmpty:([I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 98211431
          :relative 1.318837278179703
        )
        :calibrates (4632397 4794196)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 133131551
          :relative 1.388546515813903
        )
        :calibrates (6510598 4372799)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97294464
          :relative 1.3278727782891198
        )
        :calibrates (4578799 4567499)
      ))
    :"jpamb.cases.Arrays.arrayOutOfBounds:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 94534133
          :relative 1.3273021292345013
        )
        :calibrates (4540997 4357497)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 110015460
          :relative 1.3883282658511868
        )
        :calibrates (4505398 4492798)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 94673566
          :relative 1.326699364394044
        )
        :calibrates (4480598 4443398)
      ))
    :"jpamb.cases.Arrays.arraySometimesNull:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 98379430
          :relative 1.332532474333823
        )
        :calibrates (4313397 4836197)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 92993866
          :relative 1.3152757136269062
        )
        :calibrates (4439199 4560098)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 94605866
          :relative 1.3109286054000113
        )
        :calibrates (4847398 4399998)
      ))
    :"jpamb.cases.Arrays.arraySpellsHello:([C)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 112826620
          :relative 1.3857488255243566
        )
        :calibrates (4777497 4505597)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 102477563
          :relative 1.3240239759330243
        )
        :calibrates (4579798 5139498)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 94252666
          :relative 1.3302887770453315
        )
        :calibrates (4446398 4364798)
      ))
    :"jpamb.cases.Arrays.arraySumIsLarge:([I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 102632527
          :relative 1.3708535766521321
        )
        :calibrates (4402097 4336897)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 98784664
          :relative 1.3031882282056546
        )
        :calibrates (5271198 4558299)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 98520364
          :relative 1.3524289948070207
        )
        :calibrates (4323399 4428998)
      ))
    :"jpamb.cases.Arrays.binarySearch:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 99710930
          :relative 1.3471694749152374
        )
        :calibrates (4485497 4480597)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 99257964
          :relative 1.2961267080016887
        )
        :calibrates (4440298 5598198)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 97358064
          :relative 1.3428171318323432
        )
        :calibrates (4347799 4494899)
      ))
    :"jpamb.cases.Calls.allPrimesArePositive:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 131158907
          :relative 1.4607996225607323
        )
        :calibrates (4603997 4474797)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 111222060
          :relative 1.3910142605008704
        )
        :calibrates (4646498 4394298)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" maybe
          )
        )
        :duration (duration
          :absolute 103249862
          :relative 1.3532422469970529
        )
        :calibrates (4619599 4535799)
      ))
    :"jpamb.cases.Calls.callsAssertFalse:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94303633
          :relative 1.3187517956616575
        )
        :calibrates (4505997 4547297)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95332966
          :relative 1.325871572056536
        )
        :calibrates (4437598 4565698)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93993266
          :relative 1.3101314410161142
        )
        :calibrates (4604498 4599898)
      ))
    :"jpamb.cases.Calls.callsAssertFib:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 103143727
          :relative 1.3590451429325487
        )
        :calibrates (4585197 4439397)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95623165
          :relative 1.3309607014806533
        )
        :calibrates (4528498 4396999)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96060065
          :relative 1.3281498669334963
        )
        :calibrates (4670798 4353699)
      ))
    :"jpamb.cases.Calls.callsAssertIf:(Z)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95201433
          :relative 1.3356009174184775
        )
        :calibrates (4392897 4398797)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 119176157
          :relative 1.3272925163771934
        )
        :calibrates (4340798 6877497)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 99104364
          :relative 1.33964977075383
        )
        :calibrates (4327298 4739898)
      ))
    :"jpamb.cases.Calls.callsAssertIfWithTrue:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96033032
          :relative 1.3127647337451143
        )
        :calibrates (4414597 4932697)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 125382454
          :relative 1.3441830549119853
        )
        :calibrates (6670798 4681498)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96013066
          :relative 1.3144761519611146
        )
        :calibrates (4688098 4620498)
      ))
    :"jpamb.cases.Calls.callsAssertTrue:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 98099931
          :relative 1.318127460378082
        )
        :calibrates (4770696 4660597)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95802265
          :relative 1.336745342639637
        )
        :calibrates (4468599 4355298)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94297466
          :relative 1.3254380953823366
        )
        :calibrates (4555398 4358998)
      ))
    :"jpamb.cases.Dependent.badNormalizedDistance:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97927731
          :relative 1.3341276755344058
        )
        :calibrates (4628796 4445397)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94108066
          :relative 1.3147859783035178
        )
        :calibrates (4727498 4389899)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93540466
          :relative 1.3177340829252984
        )
        :calibrates (4457198 4543899)
      ))
    :"jpamb.cases.Dependent.divisionLoop:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94941733
          :relative 1.3212777578177939
        )
        :calibrates (4594597 4467097)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93114666
          :relative 1.3158878102340734
        )
        :calibrates (4366398 4631898)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93549566
          :relative 1.3190423479751534
        )
        :calibrates (4372298 4602598)
      ))
    :"jpamb.cases.Dependent.normalizedDistance:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92763234
          :relative 1.3241456399993445
        )
        :calibrates (4412397 4383097)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93888466
          :relative 1.322227098262984
        )
        :calibrates (4546699 4394899)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94645265
          :relative 1.30498638200367
        )
        :calibrates (4845699 4532998)
      ))
    :"jpamb.cases.Dependent.safeDivByN:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95776132
          :relative 1.332712185858318
        )
        :calibrates (4386597 4517197)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93554766
          :relative 1.3172267341859212
        )
        :calibrates (4708198 4304798)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92481666
          :relative 1.3024773470850344
        )
        :calibrates (4640199 4577198)
      ))
    :"jpamb.cases.Loops.forever:()V" ((analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 99392729
          :relative 1.346105975111786
        )
        :calibrates (4587297 4372097)
      ) (analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93183666
          :relative 1.3214486331874422
        )
        :calibrates (4283799 4606598)
      ) (analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92976966
          :relative 1.3085638601660468
        )
        :calibrates (4612499 4525298)
      ))
    :"jpamb.cases.Loops.neverAsserts:()V" ((analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93146034
          :relative 1.3141607584571187
        )
        :calibrates (4566197 4470997)
      ) (analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93801066
          :relative 1.306744189617172
        )
        :calibrates (4895698 4361799)
      ) (analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94000866
          :relative 1.321718290178013
        )
        :calibrates (4541598 4421199)
      ))
    :"jpamb.cases.Loops.neverDivides:()I" ((analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 100914828
          :relative 1.3537157683624248
        )
        :calibrates (4307597 4630997)
      ) (analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92627866
          :relative 1.3211328400122935
        )
        :calibrates (4427799 4415999)
      ) (analysis-result
        :response (response
          :predictions (
            :* maybe
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 98979864
          :relative 1.32942698628975
        )
        :calibrates (4385899 4885598)
      ))
    :"jpamb.cases.Loops.terminates:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94572933
          :relative 1.3239224011642359
        )
        :calibrates (4589397 4382297)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93877866
          :relative 1.314943474154499
        )
        :calibrates (4513299 4578498)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 100637964
          :relative 1.3402214007895799
        )
        :calibrates (4678198 4517198)
      ))
    :"jpamb.cases.Simple.assertBoolean:(Z)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93011135
          :relative 1.330960465318891
        )
        :calibrates (4375497 4306197)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94640766
          :relative 1.3202103873055824
        )
        :calibrates (4621998 4433198)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93702866
          :relative 1.3191489439145108
        )
        :calibrates (4557498 4429899)
      ))
    :"jpamb.cases.Simple.assertFalse:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92042935
          :relative 1.3097082930642492
        )
        :calibrates (4441797 4580397)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92685867
          :relative 1.3200025461132163
        )
        :calibrates (4407499 4464898)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93302366
          :relative 1.3057634420202797
        )
        :calibrates (4671299 4557798)
      ))
    :"jpamb.cases.Simple.assertInteger:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 109152823
          :relative 1.3628666745367684
        )
        :calibrates (4607896 4858797)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97606765
          :relative 1.304612304924741
        )
        :calibrates (4748298 4932198)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96057866
          :relative 1.3294171341184875
        )
        :calibrates (4459698 4538298)
      ))
    :"jpamb.cases.Simple.assertPositive:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 99711530
          :relative 1.3176673958830345
        )
        :calibrates (4830396 4765996)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92928267
          :relative 1.3138847830364218
        )
        :calibrates (4625498 4396299)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94484466
          :relative 1.3177980510822442
        )
        :calibrates (4595998 4494598)
      ))
    :"jpamb.cases.Simple.assertTrue:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 101786528
          :relative 1.3321917749800833
        )
        :calibrates (4680597 4793297)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93656066
          :relative 1.324520045885878
        )
        :calibrates (4485498 4386999)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94586266
          :relative 1.322746068274291
        )
        :calibrates (4613798 4383498)
      ))
    :"jpamb.cases.Simple.checkBeforeAssert:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96016332
          :relative 1.3187858019915244
        )
        :calibrates (4828497 4388497)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 101141663
          :relative 1.344957017381087
        )
        :calibrates (4399199 4741998)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 98091144
          :relative 1.336808698201549
        )
        :calibrates (4436399 4596998)
      ))
    :"jpamb.cases.Simple.checkBeforeDivideByN2:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97003631
          :relative 1.3358496931235915
        )
        :calibrates (4335397 4617597)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 132726152
          :relative 1.4588084661849265
        )
        :calibrates (4819698 4409799)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 106593034
          :relative 1.350651604550532
        )
        :calibrates (4544698 4963697)
      ))
    :"jpamb.cases.Simple.checkBeforeDivideByN:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 120129715
          :relative 1.2785421642897488
        )
        :calibrates (4421597 8229794)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94814265
          :relative 1.3282649752035827
        )
        :calibrates (4417899 4487199)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 101459638
          :relative 1.3368744225150253
        )
        :calibrates (4973297 4368897)
      ))
    :"jpamb.cases.Simple.divideByN:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 193741763
          :relative 1.4441777485316276
        )
        :calibrates (9436293 4497697)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97226365
          :relative 1.3241257073797912
        )
        :calibrates (4560398 4658698)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93109243
          :relative 1.3228001408680434
        )
        :calibrates (4447198 4408497)
      ))
    :"jpamb.cases.Simple.divideByNMinus10054203:(I)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94137933
          :relative 1.333179181911802
        )
        :calibrates (4392997 4349097)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 98426664
          :relative 1.3357988521604893
        )
        :calibrates (4565598 4519799)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96570641
          :relative 1.3267433363264172
        )
        :calibrates (4495697 4606197)
      ))
    :"jpamb.cases.Simple.divideByZero:()I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94277533
          :relative 1.329989611959538
        )
        :calibrates (4458697 4360897)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93521766
          :relative 1.324234757940322
        )
        :calibrates (4529998 4335598)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93275043
          :relative 1.3113822544019684
        )
        :calibrates (4654997 4452797)
      ))
    :"jpamb.cases.Simple.divideZeroByZero:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97469431
          :relative 1.3300372780548204
        )
        :calibrates (4463697 4653496)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96254665
          :relative 1.3191420153673334
        )
        :calibrates (4433799 4798498)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" maybe
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92189044
          :relative 1.3146247631382257
        )
        :calibrates (4422397 4512397)
      ))
    :"jpamb.cases.Simple.doNothing:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 104191426
          :relative 1.3615423682700856
        )
        :calibrates (4618097 4445897)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97439865
          :relative 1.3252526669810736
        )
        :calibrates (4668998 4546398)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92534844
          :relative 1.3230306191643595
        )
        :calibrates (4380297 4416097)
      ))
    :"jpamb.cases.Simple.earlyReturn:()I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95200432
          :relative 1.32476610438605
        )
        :calibrates (4542697 4470997)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93940066
          :relative 1.3155895321283406
        )
        :calibrates (4561598 4522699)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 102752437
          :relative 1.3282005838100492
        )
        :calibrates (4655397 4996697)
      ))
    :"jpamb.cases.Simple.justAdd:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92937334
          :relative 1.327147931592306
        )
        :calibrates (4366197 4385097)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94377765
          :relative 1.3227975837765436
        )
        :calibrates (4588499 4387899)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 99234939
          :relative 1.3168646304559788
        )
        :calibrates (5027797 4540397)
      ))
    :"jpamb.cases.Simple.justMulitply:(II)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93601634
          :relative 1.3299236593637946
        )
        :calibrates (4371197 4386497)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93509166
          :relative 1.3292860356964133
        )
        :calibrates (4329898 4431999)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93951642
          :relative 1.2948781561716274
        )
        :calibrates (5155397 4373798)
      ))
    :"jpamb.cases.Simple.justReturn:()I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 96797232
          :relative 1.3321925819370648
        )
        :calibrates (4394096 4615397)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94213066
          :relative 1.316023531115492
        )
        :calibrates (4516699 4584898)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 95769941
          :relative 1.3265957536850446
        )
        :calibrates (4432598 4596897)
      ))
    :"jpamb.cases.Simple.justReturnNothing:()V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 99118230
          :relative 1.3471307336476661
        )
        :calibrates (4457396 4456197)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 103628562
          :relative 1.3639932304805102
        )
        :calibrates (4607598 4356699)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" no
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92666744
          :relative 1.3211336225057309
        )
        :calibrates (4535797 4311697)
      ))
    :"jpamb.cases.Simple.multiError:(Z)I" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 123935012
          :relative 1.4090224200669952
        )
        :calibrates (4716797 4948197)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 92843166
          :relative 1.3042988781581686
        )
        :calibrates (4465798 4748899)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" maybe
            :"null pointer" no
            :ok no
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 104073336
          :relative 1.357684929054822
        )
        :calibrates (4699497 4434998)
      ))
    :"jpamb.cases.Strings.sayHello:(Ljava/lang/String;)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 102541028
          :relative 1.3211896891204087
        )
        :calibrates (4874496 4914496)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 93211566
          :relative 1.312634167879419
        )
        :calibrates (4598599 4476798)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" maybe
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 97055740
          :relative 1.334867024382172
        )
        :calibrates (4464498 4513597)
      ))
    :"jpamb.cases.Tricky.collatz:(I)V" ((analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 218384346
          :relative 1.4124267833068511
        )
        :calibrates (5265696 11631892)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 94787666
          :relative 1.3269208343404109
        )
        :calibrates (4549198 4380998)
      ) (analysis-result
        :response (response
          :predictions (
            :* no
            :"assertion error" maybe
            :"divide by zero" no
            :"null pointer" no
            :ok maybe
            :"out of bounds" no
          )
        )
        :duration (duration
          :absolute 98778740
          :relative 1.3073042588510952
        )
        :calibrates (4609197 5126997)
      ))
  )
)