//
//  FirstViewController.swift
//  nbdpc
//
//  Created by chenyufeng on 15/8/11.
//  Copyright (c) 2015年 nbdpc. All rights reserved.
//



import UIKit


class ViewController: UIViewController,UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate{
  
  
  var CURRENT_SCREEN_WIDTH:CGFloat!  //当前的屏幕宽度；
  
  var currentFirstSegmentedSelected:Int = 0  //全局变量
  var pastFirstSegmentedSelected:Int = 0   //全局变量
  
  var currentSecondSegmentedSelected:Int = 0
  var pastSecondSegmentedSelected:Int = 0
  
  var currentThirdSegmentedSelected:Int = 0
  var pastThirdSegmentedSelected:Int = 0
  
  @IBOutlet weak var homepageScrollView: UIScrollView!
  
  @IBOutlet weak var dynamicSegmentedControl: UISegmentedControl!
  @IBOutlet weak var dynamicScrollView: UIScrollView!
  @IBOutlet weak var dynamicInformationTableView: UITableView!
  @IBOutlet weak var noticeTableView: UITableView!
  @IBOutlet weak var bidTableView: UITableView!
  
  
  
  @IBOutlet weak var enterMainpageButton: UIButton!
  @IBOutlet weak var enterTechButton: UIButton!
  @IBOutlet weak var enterEducationButton: UIButton!
  
  
  @IBOutlet weak var economicSegmentedControl: UISegmentedControl!
  @IBOutlet weak var economicScrollView: UIScrollView!
  @IBOutlet weak var economicRunningTableView: UITableView!
  @IBOutlet weak var developmentPlanTableView: UITableView!
  @IBOutlet weak var projectBuildTableView: UITableView!
  
  @IBOutlet weak var enterHotspotButton: UIButton!
  @IBOutlet weak var enterSocialButton: UIButton!
  @IBOutlet weak var enterEntertainButton: UIButton!
  
  
  
  @IBOutlet weak var priceSegmentedControl: UISegmentedControl!
  @IBOutlet weak var priceScrollView: UIScrollView!
  @IBOutlet weak var priceManagementTableView: UITableView!
  @IBOutlet weak var socialDevelopmentTableView: UITableView!
  @IBOutlet weak var structuralReformTableView: UITableView!
  
  
  @IBOutlet weak var enterSportButton: UIButton!
  @IBOutlet weak var enterFinanceButton: UIButton!
  @IBOutlet weak var enterMoiveButton: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    CURRENT_SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width - 15
    print("当前屏幕宽度:\(CURRENT_SCREEN_WIDTH)")//当前屏幕的宽度；
    
    initAllViewWidth()
    
    
    initHomepageScrollView()//初始化主界面的ScrollView；
    
    dynamicScroll()
    economicScroll()
    priceScroll()
    
    initDynamicEnterButton()
    initEconomicEnterButton()
    initPriceEnterButton()
  }
  
  func initAllViewWidth(){
    
    dynamicInformationTableView.frame = CGRectMake(0, 0, CURRENT_SCREEN_WIDTH - 10, dynamicInformationTableView.bounds.height)
    noticeTableView.frame = CGRectMake(CURRENT_SCREEN_WIDTH, 0, CURRENT_SCREEN_WIDTH - 10 , noticeTableView.bounds.height)
    bidTableView.frame = CGRectMake(2 * CURRENT_SCREEN_WIDTH, 0, CURRENT_SCREEN_WIDTH - 10, bidTableView.bounds.height)
    
    economicRunningTableView.frame = CGRectMake(0, 0, CURRENT_SCREEN_WIDTH-10, economicRunningTableView.bounds.height)
    developmentPlanTableView.frame = CGRectMake(CURRENT_SCREEN_WIDTH, 0, CURRENT_SCREEN_WIDTH-10, developmentPlanTableView.bounds.height)
    projectBuildTableView.frame = CGRectMake(2 * CURRENT_SCREEN_WIDTH, 0, CURRENT_SCREEN_WIDTH-10, projectBuildTableView.bounds.height)
    
    priceManagementTableView.frame = CGRectMake(0, 0, CURRENT_SCREEN_WIDTH-10, priceManagementTableView.bounds.height)
    socialDevelopmentTableView.frame = CGRectMake(CURRENT_SCREEN_WIDTH, 0, CURRENT_SCREEN_WIDTH-10, socialDevelopmentTableView.bounds.height)
    structuralReformTableView.frame = CGRectMake(2 * CURRENT_SCREEN_WIDTH, 0, CURRENT_SCREEN_WIDTH-10, structuralReformTableView.bounds.height)
  }
  
  
  func initDynamicEnterButton(){
    
    enterMainpageButton.hidden = false
    enterTechButton.hidden = true
    enterEducationButton.hidden = true
  }
  
  func setDynamicEnterButtonToHidden(){
    enterMainpageButton.hidden = true
    enterTechButton.hidden = true
    enterEducationButton.hidden = true
    
  }
  
  func initEconomicEnterButton(){
    
    enterHotspotButton.hidden = false
    enterSocialButton.hidden = true
    
    enterEntertainButton.hidden = true
  }
  
  func setEconomicEnterButtonToHidden(){
    
    enterHotspotButton.hidden = true
    enterSocialButton.hidden = true
    
    enterEntertainButton.hidden = true
    
  }
  
  func initPriceEnterButton(){
    
    enterSportButton.hidden = false
    enterFinanceButton.hidden = true
    enterMoiveButton.hidden = true
    
  }
  
  func setPriceEnterButtonToHidden(){
    
    enterSportButton.hidden = true
    enterFinanceButton.hidden = true
    enterMoiveButton.hidden = true
  }
  
  
  
  func initHomepageScrollView(){
    
    homepageScrollView.contentSize=CGSize(width: CURRENT_SCREEN_WIDTH, height: 1350)
    
  }
  
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
    return 5  //返回TableView的Cell数量，可以动态设置；
  }
  
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
    
    var cellcell = UITableViewCell()
    
    switch tableView {
      
    case dynamicInformationTableView:
      let cell = self.dynamicInformationTableView.dequeueReusableCellWithIdentifier("cell1")
      
      //可以通过以下的方式在TableView中增加数据；
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    case noticeTableView:
      let cell = self.noticeTableView.dequeueReusableCellWithIdentifier("cell2")
      
      //可以通过以下的方式在TableView中增加数据；
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    case bidTableView:
      let cell = self.bidTableView.dequeueReusableCellWithIdentifier("cell3")
      
      //可以通过以下的方式在TableView中增加数据；
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    case economicRunningTableView:
      
      let cell = self.economicRunningTableView.dequeueReusableCellWithIdentifier("cell4")
      
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    case developmentPlanTableView:
      
      let cell = self.developmentPlanTableView.dequeueReusableCellWithIdentifier("cell5")
      
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    case projectBuildTableView:
      
      let cell = self.projectBuildTableView.dequeueReusableCellWithIdentifier("cell6")
      
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      
      cellcell = cell!
      
      break
      
    case priceManagementTableView:
      
      let cell = self.priceManagementTableView.dequeueReusableCellWithIdentifier("cell7")
      
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    case socialDevelopmentTableView:
      
      let cell = self.socialDevelopmentTableView.dequeueReusableCellWithIdentifier("cell8")
      
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    case structuralReformTableView:
      
      let cell = self.structuralReformTableView.dequeueReusableCellWithIdentifier("cell9")
      
      let title = cell!.viewWithTag(101) as! UILabel
      title.text = "111"
      
      cellcell = cell!
      
      break
      
    default:
      break
    }
    
    return cellcell
    
  }//tableView();
  
  
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {//设置每一个Cell的长度；
    
    return 40
    
  }
  
  func dynamicScroll(){
    
    dynamicScrollView.contentSize = CGSizeMake(3 * CURRENT_SCREEN_WIDTH, 0)
    dynamicScrollView.pagingEnabled = true;
  }
  
  func economicScroll(){ //经济运行的滚动；
    
    economicScrollView.contentSize = CGSizeMake(3 * CURRENT_SCREEN_WIDTH, 0);
    economicScrollView.pagingEnabled = true;
  }
  
  
  func priceScroll(){ //价格管理的滚动；
    priceScrollView.contentSize = CGSizeMake(3 * CURRENT_SCREEN_WIDTH, 0);
    priceScrollView.pagingEnabled = true;
  }
  
  
  func scrollViewDidScroll(scrollView: UIScrollView) {
    
    if (scrollView == dynamicScrollView){  //动态信息的滑动效果；
      
      let scrollviewW:CGFloat = dynamicScrollView.frame.size.width;
      let x:CGFloat = dynamicScrollView.contentOffset.x;
      let page:Int = (Int)((x + scrollviewW / 2) / scrollviewW);//page就是当前左右滑动的页面；
      
      
      setDynamicEnterButtonToHidden()
      //以下是根据当前滑动的页面来显示上面的分段控件(SegmentedControl)的选中状态；
      switch page{
        
      case 0:
        dynamicSegmentedControl.selectedSegmentIndex = 0
        
        enterMainpageButton.hidden = false
        
        break
      case 1:
        dynamicSegmentedControl.selectedSegmentIndex = 1
        
        enterTechButton.hidden = false
        
        break
      case 2:
        dynamicSegmentedControl.selectedSegmentIndex = 2
        
        enterEducationButton.hidden = false
        
        break
      default:
        break
      }
      
      pastFirstSegmentedSelected = dynamicSegmentedControl.selectedSegmentIndex
      
    }
    else if(scrollView == economicScrollView){
      
      let scrollviewW:CGFloat = economicScrollView.frame.size.width;
      let x:CGFloat = economicScrollView.contentOffset.x;
      let page:Int = (Int)((x + scrollviewW / 2) / scrollviewW);//page就是当前左右滑动的页面；
      
      setEconomicEnterButtonToHidden()
      //以下是根据当前滑动的页面来显示上面的分段控件(SegmentedControl)的选中状态；
      switch page{
        
      case 0:
        economicSegmentedControl.selectedSegmentIndex = 0
        
        enterHotspotButton.hidden = false
        
        break
      case 1:
        economicSegmentedControl.selectedSegmentIndex = 1
        
        enterSocialButton.hidden = false
        
        break
      case 2:
        economicSegmentedControl.selectedSegmentIndex = 2
        enterEntertainButton.hidden = false
        
        
        break
      default:
        break
      }
      
      pastSecondSegmentedSelected = economicSegmentedControl.selectedSegmentIndex
    }
      
    else if(scrollView == priceScrollView){
      
      let scrollviewW:CGFloat = priceScrollView.frame.size.width;
      let x:CGFloat = priceScrollView.contentOffset.x;
      let page:Int = (Int)((x + scrollviewW / 2) / scrollviewW);//page就是当前左右滑动的页面；
      
      
      setPriceEnterButtonToHidden()
      //以下是根据当前滑动的页面来显示上面的分段控件(SegmentedControl)的选中状态；
      switch page{
        
      case 0:
        priceSegmentedControl.selectedSegmentIndex = 0
        enterSportButton.hidden = false
        
        break
      case 1:
        priceSegmentedControl.selectedSegmentIndex = 1
        enterFinanceButton.hidden = false
        
        break
      case 2:
        priceSegmentedControl.selectedSegmentIndex = 2
        enterMoiveButton.hidden = false
        
        break
      default:
        break
      }
      
      pastThirdSegmentedSelected = priceSegmentedControl.selectedSegmentIndex
    }
    
  }
  
  @IBAction func dynamicSegmentedValueChanged(sender: UISegmentedControl) {
    
    switch sender.selectedSegmentIndex{
      
    case 0:
      currentFirstSegmentedSelected = 0
      break
      
    case 1:
      currentFirstSegmentedSelected = 1
      break
      
    case 2:
      currentFirstSegmentedSelected = 2
      break
      
    default:
      break
      
    }
    
    let sub:Int = currentFirstSegmentedSelected - pastFirstSegmentedSelected
    
    var point = dynamicScrollView.contentOffset  //获得当前的ScrollView的偏移位置；
    point.x += self.dynamicScrollView.frame.size.width * CGFloat(sub)
    dynamicScrollView.contentOffset = point//设置当前的偏移位置；
    
    pastFirstSegmentedSelected = currentFirstSegmentedSelected
    
  }
  
  @IBAction func economicSegmentedValueChanged(sender: UISegmentedControl) {
    
    switch sender.selectedSegmentIndex{
      
    case 0:
      currentSecondSegmentedSelected = 0
      
      break
      
    case 1:
      currentSecondSegmentedSelected = 1
      
      break
      
    case 2:
      currentSecondSegmentedSelected = 2
      
      break
      
    default:
      break
      
    }
    
    let sub:Int = currentSecondSegmentedSelected - pastSecondSegmentedSelected
    
    var point = economicScrollView.contentOffset  //获得当前的ScrollView的偏移位置；
    point.x += self.economicScrollView.frame.size.width * CGFloat(sub)
    economicScrollView.contentOffset = point//设置当前的偏移位置；
    
    pastSecondSegmentedSelected = currentSecondSegmentedSelected
  }
  
  
  
  @IBAction func priceSegmentedValueChanged(sender: UISegmentedControl) {
    
    switch sender.selectedSegmentIndex{
      
    case 0:
      currentThirdSegmentedSelected = 0
      
      break
      
    case 1:
      currentThirdSegmentedSelected = 1
      
      break
      
    case 2:
      currentThirdSegmentedSelected = 2
      
      break
      
    default:
      break
      
    }
    
    let sub:Int = currentThirdSegmentedSelected - pastThirdSegmentedSelected
    
    var point = priceScrollView.contentOffset  //获得当前的ScrollView的偏移位置；
    point.x += self.priceScrollView.frame.size.width * CGFloat(sub)
    priceScrollView.contentOffset = point//设置当前的偏移位置；
    
    pastThirdSegmentedSelected = currentThirdSegmentedSelected
  }
  
  
}












