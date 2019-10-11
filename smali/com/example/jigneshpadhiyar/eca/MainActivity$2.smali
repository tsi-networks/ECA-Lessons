.class Lcom/example/jigneshpadhiyar/eca/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jigneshpadhiyar/eca/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/jigneshpadhiyar/eca/MainActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_homescreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_lecon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu1:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu2:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 112
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu3:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu4:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 114
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu5:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridAdapter:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    invoke-virtual {v1}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->notifyDataSetChanged()V

    .line 117
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    const-string v2, "/Download/BitTorrent Sync/ECA-Lessons/videos/Films m\u00e9tiers/"

    iput-object v2, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->filePath:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;

    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$2;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;Lcom/example/jigneshpadhiyar/eca/MainActivity$1;)V

    .line 119
    .local v0, "task":Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method
