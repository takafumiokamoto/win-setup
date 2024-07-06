# 電源プラン究極のパフォーマンスから電源プランを複製
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 99999999-9999-9999-9999-999999999999 | Out-Null
powercfg -setactive 99999999-9999-9999-9999-999999999999
powercfg -changename 99999999-9999-9999-9999-999999999999 "Custom Power Plan"
# USBセレクティブサスペンド無効
powercfg -setacvalueindex SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
# USBHUBセレクティブサスペンド無効
powercfg -setacvalueindex SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 0853a681-27c8-4100-a2fd-82013e970683 0
# USB3リンクパワーマネージメント無効
powercfg -setacvalueindex SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 d4e98f31-5ffe-4ce1-be31-1b38b384c009 0
# プロセッサ パフォーマンスの向上しきい値
Powercfg.exe -setacvalueindex SCHEME_CURRENT sub_processor PERFINCTHRESHOLD 10
Powercfg.exe -setacvalueindex SCHEME_CURRENT sub_processor PERFINCTHRESHOLD1 10
# プロセッサ パフォーマンスの低下しきい値
Powercfg.exe -setacvalueindex SCHEME_CURRENT sub_processor PERFDECTHRESHOLD 8
Powercfg.exe -setacvalueindex SCHEME_CURRENT sub_processor PERFDECTHRESHOLD1 8
# プロセッサの最小パフォーマンス状態:100%
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN1 100
# プロセッサの最大パフォーマンス状態:100%
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX1 100
# コアパーキング無効
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR CPMINCORES 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR CPMINCORES1 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR CPMAXCORES 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR CPMAXCORES1 100
#PCI Express 省電力設定無効
powercfg -setacvalueindex SCHEME_CURRENT 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
# プロセッサのアイドルを無効
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR IDLEDISABLE 1
# Processor performance time check interval
powercfg -setacvalueindex SCHEME_CURRENT 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
# 休止状態を無効にする。
powercfg -h off
powercfg /delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg /delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg /delete 381b4222-f694-41f0-9685-ff5bb260df2e
