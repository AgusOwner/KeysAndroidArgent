.class public Lorg/apache/tools/ant/taskdefs/MacroDef$Text;
.super Ljava/lang/Object;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Text"
.end annotation


# instance fields
.field private defaultString:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private optional:Z

.field private trim:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 546
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 549
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    .line 550
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    iget-boolean v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    iget-boolean v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    .line 553
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getDefault()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    return v0
.end method

.method public getTrim()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->defaultString:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->description:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 459
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->name:Ljava/lang/String;

    return-void

    .line 460
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Illegal name [%s] for element"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setOptional(Z)V
    .locals 0

    .line 479
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->optional:Z

    return-void
.end method

.method public setTrim(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->trim:Z

    return-void
.end method
