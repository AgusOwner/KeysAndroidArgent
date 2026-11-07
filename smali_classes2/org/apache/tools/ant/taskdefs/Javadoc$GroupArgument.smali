.class public Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;
.super Ljava/lang/Object;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupArgument"
.end annotation


# instance fields
.field private final packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

.field private title:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .locals 0

    .line 1583
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1585
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->packages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .locals 1

    .line 1632
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->packages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .locals 0

    .line 1602
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->title:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    return-void
.end method

.method public getPackages()Ljava/lang/String;
    .locals 2

    .line 1640
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->packages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ":"

    .line 1641
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1610
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->title:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setPackages(Ljava/lang/String;)V
    .locals 2

    .line 1618
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1620
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 1621
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 1622
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1592
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1593
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->addTitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    return-void
.end method
