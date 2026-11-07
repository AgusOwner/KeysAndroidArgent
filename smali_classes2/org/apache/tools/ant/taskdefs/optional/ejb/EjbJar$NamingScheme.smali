.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "EjbJar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamingScheme"
.end annotation


# static fields
.field public static final BASEJARNAME:Ljava/lang/String; = "basejarname"

.field public static final DESCRIPTOR:Ljava/lang/String; = "descriptor"

.field public static final DIRECTORY:Ljava/lang/String; = "directory"

.field public static final EJB_NAME:Ljava/lang/String; = "ejb-name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 4

    const-string v0, "descriptor"

    const-string v1, "basejarname"

    const-string v2, "ejb-name"

    const-string v3, "directory"

    .line 166
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
