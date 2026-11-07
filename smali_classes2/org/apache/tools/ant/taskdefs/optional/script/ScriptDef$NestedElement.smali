.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;
.super Ljava/lang/Object;
.source "ScriptDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedElement"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->className:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->type:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->className:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 194
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->type:Ljava/lang/String;

    return-void
.end method
