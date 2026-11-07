.class Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;
.super Ljava/lang/Object;
.source "XSLTProcess.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyleMapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;->this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;Lorg/apache/tools/ant/taskdefs/XSLTProcess$1;)V
    .locals 0

    .line 1650
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 1661
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 1663
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1665
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;->this$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->access$100(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
