.class public Lorg/apache/tools/ant/util/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# static fields
.field public static INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/tools/ant/util/NullOutputStream;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/NullOutputStream;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/NullOutputStream;->INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    return-void
.end method

.method public write([B)V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 0

    return-void
.end method
