.class public Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PropertySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/PropertySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltinPropertySetName"
.end annotation


# static fields
.field static final ALL:Ljava/lang/String; = "all"

.field static final COMMANDLINE:Ljava/lang/String; = "commandline"

.field static final SYSTEM:Ljava/lang/String; = "system"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "system"

    const-string v1, "commandline"

    const-string v2, "all"

    .line 490
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
