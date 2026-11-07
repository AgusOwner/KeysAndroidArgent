.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;
.super Ljava/lang/Object;
.source "ScriptDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method getDefault()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method hasDefault()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->defaultValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 124
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->name:Ljava/lang/String;

    return-void
.end method
