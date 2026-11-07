.class public Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;
.super Ljava/lang/Object;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/PathConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapEntry"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/PathConvert;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 179
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/PathConvert;->access$000()Z

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x5c

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 181
    :goto_0
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/PathConvert;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    .line 186
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    .line 173
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Both \'from\' and \'to\' must be set in a map entry"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->from:Ljava/lang/String;

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->to:Ljava/lang/String;

    return-void
.end method
