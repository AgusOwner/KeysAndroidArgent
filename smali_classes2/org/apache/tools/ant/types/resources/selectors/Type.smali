.class public Lorg/apache/tools/ant/types/resources/selectors/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;
    }
.end annotation


# static fields
.field public static final ANY:Lorg/apache/tools/ant/types/resources/selectors/Type;

.field private static final ANY_ATTR:Ljava/lang/String; = "any"

.field public static final DIR:Lorg/apache/tools/ant/types/resources/selectors/Type;

.field private static final DIR_ATTR:Ljava/lang/String; = "dir"

.field public static final FILE:Lorg/apache/tools/ant/types/resources/selectors/Type;

.field private static final FILE_ATTR:Ljava/lang/String; = "file"


# instance fields
.field private type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Type;

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    const-string v2, "file"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Type;-><init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type;->FILE:Lorg/apache/tools/ant/types/resources/selectors/Type;

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Type;

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    const-string v2, "dir"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Type;-><init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type;->DIR:Lorg/apache/tools/ant/types/resources/selectors/Type;

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Type;

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    const-string v2, "any"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Type;-><init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type;->ANY:Lorg/apache/tools/ant/types/resources/selectors/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    .line 86
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Type;->setType(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    return-void
.end method


# virtual methods
.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 107
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    .line 104
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The type attribute is required."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setType(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    return-void
.end method
