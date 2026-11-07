.class public Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;
.super Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocletInfo"
.end annotation


# instance fields
.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;-><init>()V

    .line 226
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->params:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createParam()Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;
    .locals 2

    .line 234
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    .line 235
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParams()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->params:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
