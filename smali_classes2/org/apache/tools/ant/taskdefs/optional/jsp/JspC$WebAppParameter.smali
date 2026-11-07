.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;
.super Ljava/lang/Object;
.source "JspC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebAppParameter"
.end annotation


# instance fields
.field private directory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;->directory:Ljava/io/File;

    return-object v0
.end method

.method public setBaseDir(Ljava/io/File;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;->directory:Ljava/io/File;

    return-void
.end method
