.class public Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;
.super Ljava/lang/Object;
.source "Get.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Get;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerboseProgress"
.end annotation


# instance fields
.field private dots:I

.field out:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 613
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->dots:I

    .line 623
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->out:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public beginDownload()V
    .locals 1

    const/4 v0, 0x0

    .line 631
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->dots:I

    return-void
.end method

.method public endDownload()V
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 653
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public onTick()V
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->out:Ljava/io/PrintStream;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 641
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->dots:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->dots:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    const/4 v0, 0x0

    .line 643
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;->dots:I

    :cond_0
    return-void
.end method
