.class public Lcom/example/jigneshpadhiyar/eca/Bitmapcache;
.super Ljava/lang/Object;
.source "Bitmapcache.java"


# instance fields
.field image:Landroid/graphics/Bitmap;

.field path:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/example/jigneshpadhiyar/eca/Bitmapcache;->path:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/jigneshpadhiyar/eca/Bitmapcache;->image:Landroid/graphics/Bitmap;

    .line 16
    return-void
.end method
