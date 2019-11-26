.class public Lcn/jpush/android/ui/FullScreenView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final TAG:Ljava/lang/String; = "FullScreenView"

.field public static webViewHelper:Lcn/jpush/android/k/a/f;


# instance fields
.field private btnBackClickListener:Landroid/view/View$OnClickListener;

.field private imgBtnBack:Landroid/widget/ImageButton;

.field private final mContext:Landroid/content/Context;

.field private mWebView:Landroid/webkit/WebView;

.field private pushPrograssBar:Landroid/widget/ProgressBar;

.field private rlTitleBar:Landroid/widget/RelativeLayout;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcn/jpush/android/ui/FullScreenView$1;

    invoke-direct {p2, p0}, Lcn/jpush/android/ui/FullScreenView$1;-><init>(Lcn/jpush/android/ui/FullScreenView;)V

    iput-object p2, p0, Lcn/jpush/android/ui/FullScreenView;->btnBackClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/jpush/android/ui/FullScreenView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcn/jpush/android/ui/FullScreenView;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private quitFullScreen()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_32

    :catch_2b
    const-string v0, "FullScreenView"

    const-string v1, "quitFullScreen errno"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method private reflectAddJsInterface()V
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v2, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/k/a/f;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "JPushWeb"

    aput-object v4, v1, v2

    const-class v4, Ljava/lang/Object;

    aput-object v4, v0, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    :try_start_17
    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    const-string v3, "addJavascriptInterface"

    invoke-static {v2, v3, v0, v1}, Lcn/jpush/android/j/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_3d

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addJavascriptInterface failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenView"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    :cond_17
    return-void
.end method

.method public initModule(Landroid/content/Context;Lcn/jpush/android/d/d;)V
    .registers 9

    iget-object v0, p2, Lcn/jpush/android/d/d;->O:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/FullScreenView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "fullWebView"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "rlRichpushTitleBar"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "tvRichpushTitle"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "imgRichpushBtnBack"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pushPrograssBar"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->pushPrograssBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    const-string v3, "FullScreenView"

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->tvTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    if-nez v2, :cond_94

    :cond_88
    const-string v2, "Please use default code in jpush_webview_layout.xml!"

    invoke-static {v3, v2}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_94
    iget v2, p2, Lcn/jpush/android/d/d;->R:I

    if-ne v1, v2, :cond_ac

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_b8

    :cond_ac
    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/jpush/android/ui/FullScreenView;->btnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_b8
    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/j/a;->a(Landroid/webkit/WebSettings;)V

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcn/jpush/android/j/a;->a(Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance v0, Lcn/jpush/android/k/a/f;

    invoke-direct {v0, p1, p2}, Lcn/jpush/android/k/a/f;-><init>(Landroid/content/Context;Lcn/jpush/android/d/d;)V

    sput-object v0, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/k/a/f;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_eb

    const-string v0, "Android sdk version greater than or equal to 17, Java\u2014Js interact by annotation!"

    invoke-static {v3, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/ui/FullScreenView;->reflectAddJsInterface()V

    :cond_eb
    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/jpush/android/k/a/a;

    const-class v2, Lcn/jpush/android/k/a/b;

    iget-object v3, p0, Lcn/jpush/android/ui/FullScreenView;->pushPrograssBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcn/jpush/android/ui/FullScreenView;->tvTitle:Landroid/widget/TextView;

    const-string v5, "JPushWeb"

    invoke-direct {v1, v5, v2, v3, v4}, Lcn/jpush/android/k/a/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/jpush/android/ui/a;

    invoke-direct {v1, p2, p1}, Lcn/jpush/android/ui/a;-><init>(Lcn/jpush/android/d/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object p1, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/k/a/f;

    invoke-static {p1}, Lcn/jpush/android/k/a/b;->setWebViewHelper(Lcn/jpush/android/k/a/f;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenView"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_f
    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_f
    sget-object v0, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/k/a/f;

    invoke-static {v0}, Lcn/jpush/android/k/a/b;->setWebViewHelper(Lcn/jpush/android/k/a/f;)V

    :cond_14
    return-void
.end method

.method public showTitleBar()V
    .registers 5

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcn/jpush/android/ui/FullScreenView;->quitFullScreen()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->btnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2a

    new-instance v1, Lcn/jpush/android/ui/FullScreenView$2;

    invoke-direct {v1, p0}, Lcn/jpush/android/ui/FullScreenView$2;-><init>(Lcn/jpush/android/ui/FullScreenView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    return-void
.end method

.method public webviewCanGoBack()Z
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public webviewGoBack()V
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_7
    return-void
.end method
