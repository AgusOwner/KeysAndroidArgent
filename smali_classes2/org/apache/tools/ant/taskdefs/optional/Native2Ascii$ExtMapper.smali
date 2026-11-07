.class Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;
.super Ljava/lang/Object;
.source "Native2Ascii.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtMapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;->this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;->this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->access$100(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;->this$0:Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->access$100(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)Ljava/lang/String;

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
