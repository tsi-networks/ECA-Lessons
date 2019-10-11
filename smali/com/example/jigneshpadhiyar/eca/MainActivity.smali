.class public Lcom/example/jigneshpadhiyar/eca/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;
    }
.end annotation


# instance fields
.field controller:Landroid/widget/MediaController;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field filePath:Ljava/lang/String;

.field flag_img_sos:Ljava/lang/Boolean;

.field gridAdapter:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

.field gridView:Landroid/widget/GridView;

.field layout_homescreen:Landroid/widget/RelativeLayout;

.field layout_lecon:Landroid/widget/RelativeLayout;

.field layout_logo:Landroid/widget/LinearLayout;

.field mVideoDialog:Landroid/app/Dialog;

.field mVideoFullScreen:Landroid/widget/VideoView;

.field private progress:Landroid/widget/ProgressBar;

.field tb_118:Landroid/widget/ToggleButton;

.field tb_fire0:Landroid/widget/ImageView;

.field tb_fire1:Landroid/widget/ToggleButton;

.field tb_fire2:Landroid/widget/ToggleButton;

.field tb_fire3:Landroid/widget/ToggleButton;

.field tb_group:Landroid/widget/ToggleButton;

.field tb_menu1:Landroid/widget/ToggleButton;

.field tb_menu2:Landroid/widget/ToggleButton;

.field tb_menu3:Landroid/widget/ToggleButton;

.field tb_menu4:Landroid/widget/ToggleButton;

.field tb_menu5:Landroid/widget/ToggleButton;

.field tb_menulesson01:Landroid/widget/ToggleButton;

.field tb_menulesson02:Landroid/widget/ToggleButton;

.field tb_menulesson03:Landroid/widget/ToggleButton;

.field tb_menulesson04:Landroid/widget/ToggleButton;

.field tb_menulesson05:Landroid/widget/ToggleButton;

.field tb_menulessona:Landroid/widget/ToggleButton;

.field tb_menulessonb:Landroid/widget/ToggleButton;

.field tb_menulessonc:Landroid/widget/ToggleButton;

.field tb_menulessond:Landroid/widget/ToggleButton;

.field tb_menulessone:Landroid/widget/ToggleButton;

.field tb_sos:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->data:Ljava/util/ArrayList;

    .line 46
    const-string v0, "/Download/BitTorrent Sync/ECA-Lessons/videos/Films ECA/"

    iput-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->filePath:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->flag_img_sos:Ljava/lang/Boolean;

    .line 272
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f0c0056

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridView:Landroid/widget/GridView;

    .line 56
    const v1, 0x7f0c0059

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_lecon:Landroid/widget/RelativeLayout;

    .line 57
    const v1, 0x7f0c0057

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_homescreen:Landroid/widget/RelativeLayout;

    .line 58
    const v1, 0x7f0c0055

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_logo:Landroid/widget/LinearLayout;

    .line 60
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu1:Landroid/widget/ToggleButton;

    .line 61
    const v1, 0x7f0c0051

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu2:Landroid/widget/ToggleButton;

    .line 62
    const v1, 0x7f0c0052

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu3:Landroid/widget/ToggleButton;

    .line 63
    const v1, 0x7f0c0053

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu4:Landroid/widget/ToggleButton;

    .line 64
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu5:Landroid/widget/ToggleButton;

    .line 66
    const v1, 0x7f0c005a

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_118:Landroid/widget/ToggleButton;

    .line 67
    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_sos:Landroid/widget/ToggleButton;

    .line 68
    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_group:Landroid/widget/ToggleButton;

    .line 69
    const v1, 0x7f0c0061

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson01:Landroid/widget/ToggleButton;

    .line 70
    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson02:Landroid/widget/ToggleButton;

    .line 71
    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson03:Landroid/widget/ToggleButton;

    .line 72
    const v1, 0x7f0c0064

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson04:Landroid/widget/ToggleButton;

    .line 73
    const v1, 0x7f0c0065

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson05:Landroid/widget/ToggleButton;

    .line 74
    const v1, 0x7f0c0066

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessona:Landroid/widget/ToggleButton;

    .line 75
    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessonb:Landroid/widget/ToggleButton;

    .line 76
    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessonc:Landroid/widget/ToggleButton;

    .line 77
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessond:Landroid/widget/ToggleButton;

    .line 78
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessone:Landroid/widget/ToggleButton;

    .line 80
    const v1, 0x7f0c005c

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire0:Landroid/widget/ImageView;

    .line 81
    const v1, 0x7f0c005d

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire1:Landroid/widget/ToggleButton;

    .line 82
    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire2:Landroid/widget/ToggleButton;

    .line 83
    const v1, 0x7f0c005f

    invoke-virtual {p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire3:Landroid/widget/ToggleButton;

    .line 85
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu1:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu2:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu3:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$3;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu4:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$4;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu5:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_logo:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire1:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$7;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$7;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire2:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$8;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$8;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire3:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$9;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_sos:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$10;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$10;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;Lcom/example/jigneshpadhiyar/eca/MainActivity$1;)V

    .line 256
    .local v0, "task":Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridView:Landroid/widget/GridView;

    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$11;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 270
    return-void
.end method

.method playvideo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 346
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "else dialog call"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    .line 348
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 349
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    const v3, 0x7f040028

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 351
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 352
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    const v3, 0x7f0c007a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    .line 353
    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->controller:Landroid/widget/MediaController;

    .line 354
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 355
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 356
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 358
    const-string v2, "/Download/BitTorrent Sync/ECA-Lessons/videos/Films ECA"

    iput-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->filePath:Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "root":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Echo112.webm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "else video path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    if-eqz v1, :cond_0

    .line 366
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->controller:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 369
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->controller:Landroid/widget/MediaController;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->controller:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 371
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 372
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    invoke-virtual {v2, v5}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 373
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoFullScreen:Landroid/widget/VideoView;

    new-instance v3, Lcom/example/jigneshpadhiyar/eca/MainActivity$12;

    invoke-direct {v3, p0}, Lcom/example/jigneshpadhiyar/eca/MainActivity$12;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 384
    return-void
.end method
