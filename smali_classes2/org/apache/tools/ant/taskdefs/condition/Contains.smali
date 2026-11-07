.class public Lorg/apache/tools/ant/taskdefs/condition/Contains;
.super Ljava/lang/Object;
.source "Contains.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private caseSensitive:Z

.field private string:Ljava/lang/String;

.field private subString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->caseSensitive:Z

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->string:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->subString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 73
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->caseSensitive:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->subString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both string and substring are required in contains"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCasesensitive(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->caseSensitive:Z

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->string:Ljava/lang/String;

    return-void
.end method

.method public setSubstring(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->subString:Ljava/lang/String;

    return-void
.end method
