.class public abstract Lorg/apache/tools/ant/types/Assertions$BaseAssertion;
.super Ljava/lang/Object;
.source "Assertions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Assertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAssertion"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->className:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCommandPrefix()Ljava/lang/String;
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setClass(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->className:Ljava/lang/String;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toCommand()Ljava/lang/String;
    .locals 3

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Both package and class have been set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->getCommandPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
